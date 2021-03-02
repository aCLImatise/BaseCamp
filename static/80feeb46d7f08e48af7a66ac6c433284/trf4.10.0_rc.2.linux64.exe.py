from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Trf4_10_0_Rc_2_Linux64_Exe_V0_1_0 = CommandToolBuilder(tool="trf4.10.0_rc.2.linux64.exe", base_command=["trf4.10.0-rc.2.linux64.exe"], inputs=[ToolInput(tag="in_masked_sequence_file", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="masked sequence file")), ToolInput(tag="in_flanking_sequence", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="flanking sequence")), ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="data file")), ToolInput(tag="in_no_redundancy_elimination", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="no redundancy elimination")), ToolInput(tag="in_maximum_tr_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="maximum TR length expected (in millions) (eg, -l 3 or -l=3 for 3 million)\nHuman genome HG38 would need -l 6")), ToolInput(tag="in_ngs", input_type=Boolean(optional=True), prefix="-ngs", doc=InputDocumentation(doc="more compact .dat output on multisequence files, returns 0 on success.\nOutput is printed to the screen, not a file. You may pipe input in with\nthis option using - for file name. Short 50 flanks are appended to .dat\noutput.")), ToolInput(tag="in_match", input_type=String(), position=0, doc=InputDocumentation(doc="= matching weight")), ToolInput(tag="in_mismatch", input_type=String(), position=1, doc=InputDocumentation(doc="= mismatching penalty"))], outputs=[], container="quay.io/biocontainers/trf:4.09.1--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trf4_10_0_Rc_2_Linux64_Exe_V0_1_0().translate("wdl")

