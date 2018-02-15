pragma solidity ^0.4.0;
contract concat {
    string public result;
    event test_value(string res, string val);
    
    function concat(string _a, string _b) public {
        result = strConcat(_a, _b);
        test_value("res", result);
    }
    
    function strConcat(string _a, string _b) public pure returns (string){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        string memory ab = new string(_ba.length + _bb.length);
        bytes memory bab = bytes(ab);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) bab[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) bab[k++] = _bb[i];
        return string(bab);
    }
}