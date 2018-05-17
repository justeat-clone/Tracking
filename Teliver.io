For Android Configuration

To begin with – The configuration steps

    Open your build.gradle file of Module:app.
    Add compile 'com.teliver.sdk:TeliverSdk:1.0.18'as dependency.

    Obtain the map key from Google maps page.

    Open your AndroidManifest.xml file and paste the following code under application tag after embedding your map key obtained from Google.

<meta-data
android:name="com.google.android.geo.API_KEY"
android:value="API_KEY_FOR_MAP"/>

    Note: You can skip steps 2 and 3 if you have already got map key and added it in manifest or you just want the location updates alone.
Integration
Let’s see the magical spells now!!

    Initiate our SDK by adding the following code snippet in your Application class

Teliver.init(this,"TELIVER_KEY");

    Note: Obtain the Teliver key from the dashboard, Use TLog.setVisible(true);to enable logging for development.

    Next, setup the transmission for the operator app for whom the location has to be tracked.

Teliver.startTrip(new TripBuilder("Tracking_Id").build());

    Note: The Tracking_Id here is your unique identifier for the trip; basically it’s just the order id or driver id in your system

    Since our operator app is ready for transmission, we will now setup our consumer side to locate on map.

Teliver.startTracking(new TrackingBuilder(new MarkerOption("Tracking_Id")).build());

    Note: The Tracking_Id here is same as the id you given in previous step of operator start trip.

Ref: The above view will appear on calling startTracking

Yay!! That’s all... Now you can track an Operator.

    Stop Trip

Teliver.stopTrip("Tracking_Id");

    Call this method with the tracking id to stop the trip on Operator side.

    Stop Tracking

Teliver.stopTracking("Tracking_Id");

    Call this method to stop tracking of Operator from Consumer side.
