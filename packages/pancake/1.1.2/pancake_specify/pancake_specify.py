from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Pancake_Specify_V0_1_0 = CommandToolBuilder(tool="pancake_specify", base_command=["pancake", "specify"], inputs=[ToolInput(tag="in_pan_file", input_type=File(optional=True), prefix="--panfile", doc=InputDocumentation(doc="Name of PanCake Data Object File (required)")), ToolInput(tag="in_chrom", input_type=Array(t=String(), optional=True), prefix="--chrom", doc=InputDocumentation(doc="name(s) of respective chromosome(s)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="new name of specified chromosome, this will become the\nchromosome's name in incidental output files")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="name of genome CHROM belongs to")), ToolInput(tag="in_genome_file", input_type=File(optional=True), prefix="--genome_file", doc=InputDocumentation(doc="input file containing mapping of chromosomes to\ngenomes and additional chromosome names")), ToolInput(tag="in_delete", input_type=Array(t=String(), optional=True), prefix="--delete", doc=InputDocumentation(doc="chromosome names to delete\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Specify_V0_1_0().translate("wdl", allow_empty_container=True)

