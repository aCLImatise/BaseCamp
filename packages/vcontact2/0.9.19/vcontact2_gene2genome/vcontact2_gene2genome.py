from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Vcontact2_Gene2Genome_V0_1_0 = CommandToolBuilder(tool="vcontact2_gene2genome", base_command=["vcontact2_gene2genome"], inputs=[ToolInput(tag="in_source_type", input_type=File(optional=True), prefix="--source-type", doc=InputDocumentation(doc="Select one of the options as an input source. MetaGeneMark can be either the nucleotide or protein FASTA-formatted output.")), ToolInput(tag="in_keep_descriptions", input_type=Boolean(optional=True), prefix="--keep-descriptions", doc=InputDocumentation(doc="This will enable taking the full description of sequences during MetaGeneMark parsing.")), ToolInput(tag="in_compatibility", input_type=Boolean(optional=True), prefix="--compatibility", doc=InputDocumentation(doc="Adds compatibility for vContact1 headers."))], outputs=[], container="quay.io/biocontainers/vcontact2:0.9.19--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcontact2_Gene2Genome_V0_1_0().translate("wdl")

