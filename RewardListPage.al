page 50103 "Reward List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = Reward;
    CardPageId = "Reward card";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; Rec."Reward ID")
                {

                }
                field(Description; Rec.Description)
                {

                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {

                }
            }
        }
    }
}