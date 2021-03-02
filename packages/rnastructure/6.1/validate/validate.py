from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Validate_V0_1_0 = CommandToolBuilder(tool="validate", base_command=["validate"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Display information about the sequence. (This also implies --quiet.)\nCurrently the only information shown is the sequence length of each\nvalidated sequence.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress unnecessary output. The process exit code indicates the result of\nvalidation (as usual).")), ToolInput(tag="in_unknown", input_type=Boolean(optional=True), prefix="--unknown", doc=InputDocumentation(doc="Suppress errors due to unknown bases in sequences.")), ToolInput(tag="in_alphabet", input_type=Boolean(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="Specify the name of a folding alphabet and associated nearest neighbor\nparameters. The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. 'rna' for RNA parameters or 'dna' for DNA parameters or a\ncustom extended/modified alphabet. The thermodynamic parameters need to\nreside in the at the location indicated by environment variable DATAPATH.\nThe default is 'rna' (i.e. use RNA parameters). This option overrides the\n--DNA flag.")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="--length", doc=InputDocumentation(doc="Limit the length of the validated sequence to the specified number of\nbases.")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="--type", doc=InputDocumentation(doc="The type of file validation to perform. This can be numeric (1=CT,\n2=SEQ/FASTA, 3=PFS, 4=SAV, 5=DotBracket, 6=CON, 7=SHAPE/CHEM, 8=OLIS) or\ntext (one of: ct, seq|fasta, pfs, sav, dot|dbn|braket, con, shape|chem,\nlis|list|olis) or 'auto' (the default) which uses the file extension to\ndetermine the type.\n")), ToolInput(tag="in_file_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_V0_1_0().translate("wdl", allow_empty_container=True)

