//Case Study 3
//Date :07/01/2025
///Create Custom field called "number of Locations" on the Account object
//Write a trigger to create number of contacts which are equal to the number,
//Which we enter in the Number of location field on account object
public class AccountHandlercs3 {
    Public Static void noof(List<Account> myacc)
    {
        List<contact> updatecon = new List<contact>();
        for(Account acc:myacc)
        {
            
            for(integer i=0; i<acc.NumberofLocations_c__c; i++)
                
            {
                contact caa = new contact();
                caa.Lastname = Acc.Name;
                caa.AccountId = acc.id;
                caa.Phone = acc.phone;
                updatecon.add(caa);
            }
            
        }
        try
        {
            if(!updatecon.isempty())
            {
                insert updatecon;//inserting contacts based on counts
            }
        }
        catch(exception ex)
        {
            system.debug('The Exception is'+ex.getmessage());
        }
    }
}