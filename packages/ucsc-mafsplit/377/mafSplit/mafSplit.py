from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Mafsplit_V0_1_0 = CommandToolBuilder(tool="mafSplit", base_command=["mafSplit"], inputs=[ToolInput(tag="in_by_target", input_type=Boolean(optional=True), prefix="-byTarget", doc=InputDocumentation(doc="Make one file per target sequence.  (splits.bed input\nis ignored).")), ToolInput(tag="in_outdir_depth", input_type=Int(optional=True), prefix="-outDirDepth", doc=InputDocumentation(doc="For use only with -byTarget.\nCreate N levels of output directory under current dir.\nThis helps prevent NFS problems with a large number of\nfile in a directory.  Using -outDirDepth=3 would\nproduce ./1/2/3/outRoot123.maf.")), ToolInput(tag="in_use_sequence_name", input_type=Boolean(optional=True), prefix="-useSequenceName", doc=InputDocumentation(doc="For use only with -byTarget.\nInstead of auto-incrementing an integer to determine\noutput filename, expect each target sequence name to\nend with a unique number and use that number as the\ninteger to tack onto outRoot.")), ToolInput(tag="in_usefull_sequence_name", input_type=Boolean(optional=True), prefix="-useFullSequenceName", doc=InputDocumentation(doc="For use only with -byTarget.\nInstead of auto-incrementing an integer to determine\noutput filename, use the target sequence name\nto tack onto outRoot.")), ToolInput(tag="in_use_hashed_name", input_type=Int(optional=True), prefix="-useHashedName", doc=InputDocumentation(doc="For use only with -byTarget.\nInstead of auto-incrementing an integer or requiring\na unique number in the sequence name, use a hash\nfunction on the sequence name to compute an N-bit\nnumber.  This limits the max #filenames to 2^N and\nensures that even if different subsets of sequences\nappear in different pairwise mafs, the split file\nnames will be consistent (due to hash function).\nThis option is useful when a 'scaffold-based'\nassembly has more than one sequence name pattern,\ne.g. both chroms and scaffolds.\n")), ToolInput(tag="in_splits_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_root", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafsplit_V0_1_0().translate("wdl", allow_empty_container=True)

