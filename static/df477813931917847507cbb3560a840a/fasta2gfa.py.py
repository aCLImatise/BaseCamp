from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Fasta2Gfa_Py_V0_1_0 = CommandToolBuilder(tool="fasta2gfa.py", base_command=["fasta2gfa.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="FASTA file containing the sequences of the scaffolds obtained from the assembly (format: 'xxx.fasta')")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="Minimum size of the 'Ns' region to treat/process as a gap")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="Maximum size of the 'Ns' region to treat/process as a gap")), ToolInput(tag="in_contigs", input_type=Int(optional=True), prefix="-contigs", doc=InputDocumentation(doc="Minimum size of the flanking contigs of the 'Ns' region to treat/process as a gap")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output directory for saving the GFA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for saving the GFA file"))], container="quay.io/biocontainers/mtglink:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Gfa_Py_V0_1_0().translate("wdl")

