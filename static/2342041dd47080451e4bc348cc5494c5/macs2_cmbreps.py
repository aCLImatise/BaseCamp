from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, File, String, Directory

Macs2_Cmbreps_V0_1_0 = CommandToolBuilder(tool="macs2_cmbreps", base_command=["macs2", "cmbreps"], inputs=[ToolInput(tag="in_macs_score_bedgraph", input_type=Array(t=File(), optional=True), prefix="-i", doc=InputDocumentation(doc="MACS score in bedGraph for each replicate. Require at\nleast 2 files such as '-i A B C D'. REQUIRED")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method to use while combining scores from replicates.\n1) fisher: Fisher's combined probability test. It\nrequires scores in ppois form (-log10 pvalues) from\nbdgcmp. Other types of scores for this method may\ncause cmbreps unexpected errors. 2) max: take the\nmaximum value from replicates for each genomic\nposition. 3) mean: take the average value. Note,\nexcept for Fisher's method, max or mean will take\nscores AS IS which means they won't convert scores\nfrom log scale to linear scale or vice versa.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="If specified all output files will be written to that\ndirectory. Default: the current working directory")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="Output BEDGraph filename for combined scores.\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="If specified all output files will be written to that\ndirectory. Default: the current working directory")), ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="Output BEDGraph filename for combined scores.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Macs2_Cmbreps_V0_1_0().translate("wdl", allow_empty_container=True)

