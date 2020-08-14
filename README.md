<h1> News Dialog </h1>

Pepper App for extraction of Czech news from the internet and forwarding them to the user

Using News API from https://newsapi.org/s/czech-republic-news-api
(const API_KEY can be replaced with your own key)

<h2> Dialog Process Description (*using Choregraphe Dialog Syntax*) </h2> 

1. Activate the dialog saying ({"chci slyšet"} {další} novinky)
-> Pepper triggers the dialog and offers you to choose a topic name

2. OPTIONAL: Say ["{nechápu nevím netuším} co tím myslíš" "vysvětli {mi to}"]

    -> Pepper explains that the following topics are available:
business, entertainment, health, science, sports, technology (or everything together)

3. Choose a topic: ^repeat{"["chtěl bych" chci] slyšet" "co takhle něco o" "novinky o"} + selected_topic
OR say simply [ne není "tak různě" "všechno"] which means everything

    -> Pepper downloads the news using the API and saves them, after that, it chooses random first news

    -> Afterwards, Pepper extracts the main topic from the selected news and transforms it into 6th case, using NLP Language Services https://nlp.fi.muni.cz/languageservices/
    
    -> If any issue occurs, like no or wrong main phrases present in the news (so they could not be talked about), Pepper tries to continue with the next news and so on until all downloaded news are checked.
        If none matching is found or any other issue occurs, an exception is raised and the robot informs the user that nothing has been found (the user may now ask the robot to try again saying "Zkus to znovu")
        
    -> On success, the user is informed about the news topic
    
4. OPTIONAL: Say [řekni pověz "chci slyšet" "zajímá mě" přečti] {mi} {"o tom"} víc

    to get more information about the news. An image corresponding with the news will be displayed on the tablet (if available) and you will be informed about the source and whole news text.

5. You can choose to continue with the next news: ["Najdi mi" Chci] ["něco jiného" "jinou zprávu" "další zprávu"] as many times as you wish

6. Finish with [díky "to je vše" děkuji děkuju "to mě nezajímá"]


<h2> Sample Dialog </h2> 

u: "Novinky"


r: "Ahoj, řeknu ti, co se děje nového. Je nějaké téma zpráv, které tě zajímá?"

u: "Co tím myslíš?"

r: "Umím hledat aktuality o byznysu, zábavě, zdraví, sportu, vědě a technice. A taky všechno najednou, kdyby ses nemohl rozhodnout."

u: "Co takhle něco o zdraví?"

r: "Tak dobře, chvilku počkej, najdu ti novinky o zdraví."

r (after 10 seconds or so): "Na internetu píšou o nemocnici v Praze."

u: "Řekni mi víc."

r: "Na webu aktuálně.cz píšou. Nemocnice v Praze hlásí nárůst nakažených Covidem-19."

u: "Chci další zprávu."

r (after 10 seconds or so): "Na internetu píšou o novém objevu."

u: "To je vše."





