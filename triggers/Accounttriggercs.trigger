trigger Accounttriggercs on Account (after insert) {
    if (Trigger.isafter && Trigger.isInsert)
    {
        AccountHandlercs3.noof(Trigger.new);
    }
}