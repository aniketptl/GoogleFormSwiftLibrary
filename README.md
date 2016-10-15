# GoogleFormSwiftLibrary

Super Simple Google Form Integration using Swift

Usage

        let gForm = GoogleForm()
        
        /* Clear the Contents before next entry */
        gForm.clear()
        
        /* Google Form Link */
        gForm.setGoogleFormLink(googleFormLink)
        
        /* Fields */
        gForm.setNextFields(googleFormNameField, value: ClientList.text!)
        gForm.setNextFields(googleFormCompanyField, value: CompanyList.text!)
        gForm.setNextFields(googleFormCommentsField, value: Comments.text!)
        
        /* Sends data to google form */
        gForm.sendToGoogleForm()
        


