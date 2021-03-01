from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Alleleprofile_Hasher_Py_V0_1_0 = CommandToolBuilder(tool="alleleprofile_hasher.py", base_command=["alleleprofile_hasher.py"], inputs=[ToolInput(tag="in_profile", input_type=File(optional=True), prefix="--profile", doc=InputDocumentation(doc="Path to allele profile in tsv with first column #File")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Path to location of all loci fasta files")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Path to new allele profile containing the hash values")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose statements")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing result files"))], outputs=[], container="quay.io/biocontainers/chewiesnake:3.0.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleleprofile_Hasher_Py_V0_1_0().translate("wdl")

