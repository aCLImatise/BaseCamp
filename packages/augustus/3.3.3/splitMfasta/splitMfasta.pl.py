from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Splitmfasta_Pl_V0_1_0 = CommandToolBuilder(tool="splitMfasta.pl", base_command=["splitMfasta.pl"], inputs=[ToolInput(tag="in_minsize", input_type=File(optional=True), prefix="--minsize", doc=InputDocumentation(doc="each split output fasta file total to at least this man base pairs.\nset this to 0 to split the input in single sequence files.")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--outputpath", doc=InputDocumentation(doc="prefix to output path. Output files are\ns/input.split.1.fa\ns/input.split.2.fa\ns/input.split.3.fa\n...\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitmfasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

