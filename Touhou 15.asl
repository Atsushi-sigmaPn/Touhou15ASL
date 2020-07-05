state("th15")
{
	int segmentID : "th15.exe", 0xE73F8;
	int stage1 : "th15.exe", 0xE9A80, 0x17C, 0xC, 0x7230;
}

start
{
	current.clownpieceTrolling = false;
	return current.stage1 == 1;
}

split
{
	if(old.segmentID == 3 && current.segmentID == 4)
	{
		current.clownpieceTrolling = true;
	}
		
	if(old.segmentID != current.segmentID)
		print(old.segmentID.ToString() + " => " + current.segmentID.ToString());
	
	if(
		old.segmentID == 0 && current.segmentID == 1 ||
		old.segmentID == 1 && current.segmentID == 2 ||
		old.segmentID == 2 && current.segmentID == 4 ||
		old.segmentID == 4 && current.segmentID == 31 ||
		old.segmentID == 4 && current.segmentID == 5 ||
		old.segmentID == 5 && current.segmentID == 41 ||
		old.segmentID == 43 && current.segmentID == 62 ||
		old.segmentID == 62 && current.segmentID == 44 ||
		old.segmentID == 44 && current.segmentID == 63 ||
		old.segmentID == 63 && current.segmentID == 81 ||
		old.segmentID == 2 && current.segmentID == 3 ||
		old.segmentID == 3 && current.segmentID == 4 && !old.clownpieceTrolling ||
		old.segmentID == 63 && current.segmentID == 45 ||
		old.segmentID == 45 && current.segmentID == 64 ||
		old.segmentID == 64 && current.segmentID == 81 ||
		old.segmentID == 3 && current.segmentID == 31 ||
		old.segmentID == 31 && current.segmentID == 4 ||
		old.segmentID == 64 && current.segmentID == 65 ||
		old.segmentID == 65 && current.segmentID == 81 ||
		old.segmentID == 5 && current.segmentID == 6 ||
		old.segmentID == 6 && current.segmentID == 7 ||
		old.segmentID == 7 && current.segmentID == 8 ||
		old.segmentID == 8 && current.segmentID == 41 ||
		old.segmentID == 65 && current.segmentID == 47 ||
		old.segmentID == 66 && current.segmentID == 81 ||
		old.segmentID == 3 && current.segmentID == 41 ||
		old.segmentID == 43 && current.segmentID == 63 ||
		old.segmentID == 63 && current.segmentID == 44 ||
		old.segmentID == 64 && current.segmentID == 46 ||
		old.segmentID == 46 && current.segmentID == 65 ||
		old.segmentID == 65 && current.segmentID == 47 ||
		old.segmentID == 66 && current.segmentID == 48 ||
		old.segmentID == 67 && current.segmentID == 49 ||
		old.segmentID == 68 && current.segmentID == 81
	  )
	  return true;
	 
}
reset
{
	return false;
}

isLoading
{
	return false;
}