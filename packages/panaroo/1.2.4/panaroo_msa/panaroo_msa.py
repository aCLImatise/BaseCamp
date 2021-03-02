from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory, String, Float

Panaroo_Msa_V0_1_0 = CommandToolBuilder(tool="panaroo_msa", base_command=["panaroo-msa"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use (default=1)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print additional output")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="location of the Panaroo output directory")), ToolInput(tag="in_alignment", input_type=String(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Output alignments of core genes or all genes. Options\nare 'core' and 'pan'. Default: 'None'")), ToolInput(tag="in_aligner", input_type=String(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Specify an aligner. Options:'prank', 'clustal', and\ndefault: 'mafft'")), ToolInput(tag="in_core_threshold", input_type=Float(optional=True), prefix="--core_threshold", doc=InputDocumentation(doc="Core-genome sample threshold (default=0.95)\n")), ToolInput(tag="in_generate_pana_roo_msa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="location of the Panaroo output directory"))], container="quay.io/biocontainers/panaroo:1.2.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panaroo_Msa_V0_1_0().translate("wdl")

