<?xml version="1.0" encoding="UTF-8" ?>
<Package name="newstalk" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="Intro_News" src="Intro_News/Intro_News.dlg" />
        <Dialog name="AdditionalInfo" src="AdditionalInfo/AdditionalInfo.dlg" />
        <Dialog name="ErrorDialog" src="ErrorDialog/ErrorDialog.dlg" />
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
    </Dialogs>
    <Resources>
        <File name="choice_sentences" src="behavior_1/Aldebaran/choice_sentences.xml" />
    </Resources>
    <Topics>
        <Topic name="Intro_News_czc" src="Intro_News/Intro_News_czc.top" topicName="Intro_News" language="cs_CZ" />
        <Topic name="Intro_News_enu" src="Intro_News/Intro_News_enu.top" topicName="Intro_News" language="en_US" />
        <Topic name="AdditionalInfo_czc" src="AdditionalInfo/AdditionalInfo_czc.top" topicName="AdditionalInfo" language="cs_CZ" />
        <Topic name="ErrorDialog_czc" src="ErrorDialog/ErrorDialog_czc.top" topicName="ErrorDialog" language="cs_CZ" />
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
    </Topics>
    <IgnoredPaths>
        <Path src="README.md" />
    </IgnoredPaths>
    <Translations auto-fill="cs_CZ">
        <Translation name="translation_cs_CZ" src="translations/translation_cs_CZ.ts" language="cs_CZ" />
    </Translations>
</Package>
