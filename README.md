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
        
1. Create new form in Google Drive
![Alt text](/Screens/form.png)

2. Click on Send
![image](/Screens/sendForm.png)

3. You will get Link from it
![image](/Screens/link.png)
- Now change viewform to formResponse and that will be your googleFormLink

4. Now view source in browser and search for entry
![image](/Screens/entry.png)

5. Now the entries will be serially as the fields defined in your form are 
    - entry.988940513 will be googleFormNameField
    - entry.616869385 will be googleFormCompanyField
    
6. You are done
        


