from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Rgt_Tools_Py_Bed_To_Fasta_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_to_fasta", base_command=["rgt-tools.py", "bed_to_fasta"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_directory_fasta", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for FASTA files")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="Define the FASTA file of the genome sequence")), ToolInput(tag="in_loci", input_type=Boolean(optional=True), prefix="-loci", doc=InputDocumentation(doc="Make genomic loci as sequence name")), ToolInput(tag="in_order", input_type=Boolean(optional=True), prefix="-order", doc=InputDocumentation(doc="Make ranking number as sequence name")), ToolInput(tag="in_block", input_type=Boolean(optional=True), prefix="-block", doc=InputDocumentation(doc="Read blocks")), ToolInput(tag="in_score", input_type=Boolean(optional=True), prefix="-score", doc=InputDocumentation(doc="Load the score column in BED into FASTA"))], outputs=[ToolOutput(tag="out_output_directory_fasta", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_fasta", type_hint=File()), doc=OutputDocumentation(doc="Output directory for FASTA files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

