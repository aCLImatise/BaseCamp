from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fqc_V0_1_0 = CommandToolBuilder(tool="fqc", base_command=["fqc"], inputs=[ToolInput(tag="in_options_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The table 'key' is the absolute path of each input file, but the printed")), ToolInput(tag="in_sorting", input_type=String(), position=0, doc=InputDocumentation(doc="*-s, --sortby*\nSort by field: 'order' (default, that is the order of the input\nfiles as supplied by the user), 'count' (number of sequences),\n'name' (filename). By default will be descending for numeric fields,\nascending for 'path'. See '-r, --reverse'.\n*-r, --reverse*\nReverse the sorting order.")), ToolInput(tag="in_other", input_type=String(), position=1, doc=InputDocumentation(doc="*-f, --fastx*\nForce FASTX reader also for files ending by .fastq or .fq (by\ndefault would use getFastqRead() )\n*-v, --verbose*\nIncrease verbosity\n*-h, --help*\nDisplay this help page"))], outputs=[], container="quay.io/biocontainers/perl-fastx-reader:1.0.5--pl5262hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fqc_V0_1_0().translate("wdl")

