from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Maxexpect_V0_1_0 = CommandToolBuilder(tool="MaxExpect", base_command=["MaxExpect"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="This flag only matters if the input file is a sequence file and has been\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\nto be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_sequence", input_type=Boolean(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Identify the input file format as a sequence file.")), ToolInput(tag="in_alphabet", input_type=Boolean(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="Specify the name of a folding alphabet and associated nearest neighbor\nparameters. The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. 'rna' for RNA parameters or 'dna' for DNA parameters or a\ncustom extended/modified alphabet. The thermodynamic parameters need to\nreside in the at the location indicated by environment variable DATAPATH.\nThe default is 'rna' (i.e. use RNA parameters). This option overrides the\n--DNA flag.")), ToolInput(tag="in_gamma", input_type=Boolean(optional=True), prefix="--gamma", doc=InputDocumentation(doc="Specify the weight which should be placed on base pairs.\nDefault is 1.0.")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="--percent", doc=InputDocumentation(doc="Specify a maximum percent energy difference.\nDefault is 50 (ie, 50, not 0.5).")), ToolInput(tag="in_structures", input_type=Boolean(optional=True), prefix="--structures", doc=InputDocumentation(doc="Specify a maximum number of structures.\nDefault is 1000 structures.")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="Specify a window size.\nDefault is 5 nucleotides.\n")), ToolInput(tag="in_specified_dot", input_type=String(), position=0, doc=InputDocumentation(doc="<ct file>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maxexpect_V0_1_0().translate("wdl", allow_empty_container=True)

