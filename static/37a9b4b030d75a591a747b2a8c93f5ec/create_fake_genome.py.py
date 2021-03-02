from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Create_Fake_Genome_Py_V0_1_0 = CommandToolBuilder(tool="create_fake_genome.py", base_command=["create_fake_genome.py"], inputs=[ToolInput(tag="in_locus", input_type=String(optional=True), prefix="--locus", doc=InputDocumentation(doc="locus in format <chr>:<start>-<end>")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="{+,-}        strand of locus")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Output prefix\n")), ToolInput(tag="in_genome_filename", input_type=String(), position=0, doc=InputDocumentation(doc="gff_filename"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Fake_Genome_Py_V0_1_0().translate("wdl")

