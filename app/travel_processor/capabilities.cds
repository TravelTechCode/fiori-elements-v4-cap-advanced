using {TravelService} from '../../srv/travel-service';

annotate TravelService.Travel with @odata.draft.enabled;
annotate TravelService.Travel with @Common.SemanticKey: [TravelID];
annotate TravelService.Booking with @Common.SemanticKey: [BookingID];
annotate TravelService.BookingSupplement with @Common.SemanticKey: [BookingSupplementID];

annotate TravelService.Travel with @(Capabilities.DeleteRestrictions: {
    $Type    : 'Capabilities.DeleteRestrictionsType',
    Deletable: TravelStatus.insertDeleteRestriction 
});

annotate TravelService.Travel with @UI: {
    DeleteHidden: false,
    CreateHidden: false
};
