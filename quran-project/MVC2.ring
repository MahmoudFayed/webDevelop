#!c:\ring\bin\ring.exe -cgi
/*
	#Author 	:Sara Hamdy
	#Date		:2018/01/24
	#Application	:quraan in English web page
*/

Load "weblib.ring"
Load "datalib.ring"
Import System.Web

website = "MVC2.ring"

New QuranController { Routing() }

Class QuranModel from ModelBase

	cSearchColumn = "text"  

Class QuranController From ControllerBase

Class QuranView From ViewBase

  oLanguage = new QuranLanguageEnglish

  Func AddFuncScript oPage,oController
        return   oPage.scriptfuncajax("myadd",oController.cMainURL+
                 oController.cOperation+"=add","mysubpage")

  Func FormViewContent oController,oTranslation,oPage
        return [
                        [ oTranslation.aColumnsTitles[2], "textbox", "text",
                          oController.oModel.text, oPage.stylewidth("100%")    ],
                        [ oTranslation.aColumnsTitles[3], "textbox", "sura",
                          oController.oModel.sura, oPage.stylewidth("50%") ]
                   ]

Class QuranLanguageEnglish
	cTitle = "AL FATEHA "
	cBack = "back"
	aColumnsTitles = [" Ayah NO ","AYAH ","SURA NO"]
	cOptions = "Options"
	cSearch = "Search"
	comboitems = ["Select Option...","Edit","Delete"]
	cAddRecord = "Add Record"
	cEditRecord = "Edit Record"
	cRecordDeleted = "Record Deleted!"
	aMovePages = ["First","Prev","Next","Last"]
	cPage = "Page"
	cOf = "of"
	cRecordsCount = "Records Count"
	cSave = "Save"
	temp = new page
	cTextAlign = temp.StyleTextRight()
	cNoRecords = "No records!"




