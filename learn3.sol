pragma solidity >= 0.7.0 < 0.9.0;

contract learn3 {
    address owner;

    constructor () {
        owner = msg.sender;
    }

    struct Song {
        string title;
        string singer;
        uint year;
    }
    mapping(address => uint) public songId;

    Song song;

    function setSong() public {
        song = Song('Shape of you', 'Ed Sheeran', 2017);
    }

    function setSongId(uint id) public {
        songId[msg.sender] = id;
    }

    function removeSongId() public {
        delete songId[msg.sender];
    }
}

contract learn3son is learn3 {
    modifier onlyOwnSong {
        require(msg.sender == owner);
        _;
    }

    function randMod(uint range) external view returns(uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % range;
    }
}