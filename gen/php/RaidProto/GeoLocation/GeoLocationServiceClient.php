<?php
// GENERATED CODE -- DO NOT EDIT!

namespace RaidProto\GeoLocation;

/**
 * GeoLocationService provides operations for managing geo locations
 */
class GeoLocationServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * GetGeoLocationByName retrieves a geo location by its name
     * @param \RaidProto\GeoLocation\GeoLocationRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\RaidProto\GeoLocation\GeoLocationResponse>
     */
    public function GetGeoLocationByName(\RaidProto\GeoLocation\GeoLocationRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/geo_location.GeoLocationService/GetGeoLocationByName',
        $argument,
        ['\RaidProto\GeoLocation\GeoLocationResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * CreateGeoLocation creates a new geo location
     * @param \RaidProto\GeoLocation\CreateGeoLocationRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\RaidProto\GeoLocation\GeoLocationResponse>
     */
    public function CreateGeoLocation(\RaidProto\GeoLocation\CreateGeoLocationRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/geo_location.GeoLocationService/CreateGeoLocation',
        $argument,
        ['\RaidProto\GeoLocation\GeoLocationResponse', 'decode'],
        $metadata, $options);
    }

    /**
     * UpdateGeoLocation updates an existing geo location
     * @param \RaidProto\GeoLocation\UpdateGeoLocationRequest $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     * @return \Grpc\UnaryCall<\RaidProto\GeoLocation\GeoLocationResponse>
     */
    public function UpdateGeoLocation(\RaidProto\GeoLocation\UpdateGeoLocationRequest $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/geo_location.GeoLocationService/UpdateGeoLocation',
        $argument,
        ['\RaidProto\GeoLocation\GeoLocationResponse', 'decode'],
        $metadata, $options);
    }

}
