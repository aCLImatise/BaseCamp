from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ca2Singletons_V0_1_0 = CommandToolBuilder(tool="ca2singletons", base_command=["ca2singletons"], inputs=[ToolInput(tag="in_asm_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=".asm file")), ToolInput(tag="in_fasta_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=".fasta file name")), ToolInput(tag="in_frg_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc=".frg file")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="-clear", doc=InputDocumentation(doc="outputs just the clear range of the singletons")), ToolInput(tag="in_contig", input_type=Boolean(optional=True), prefix="-contig", doc=InputDocumentation(doc="outputs singletons in TIGR .contig format")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="-list", doc=InputDocumentation(doc="outputs a list of the singleton names"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ca2Singletons_V0_1_0().translate("wdl", allow_empty_container=True)

