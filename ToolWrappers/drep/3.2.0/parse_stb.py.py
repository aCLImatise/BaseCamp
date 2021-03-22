from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Parse_Stb_Py_V0_1_0 = CommandToolBuilder(tool="parse_stb.py", base_command=["parse_stb.py"], inputs=[ToolInput(tag="in_stb", input_type=File(optional=True), prefix="--stb", doc=InputDocumentation(doc="scaffold to bin file (default: None)")), ToolInput(tag="in_fasta_file_extract", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FASTA [FASTA ...]], --fasta [FASTA [FASTA ...]]\nfasta file to extract scaffolds from. Will treat as\ncompressed if ends in .gz (default: None)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output base name (default: )")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="generate a stb from a list of genomes (default: False)")), ToolInput(tag="in_the", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_program", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_has", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_uses", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_related", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_scaffold", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_bin", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/drep:3.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Stb_Py_V0_1_0().translate("wdl")

