from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Referenceseeker_Db_Import_V0_1_0 = CommandToolBuilder(tool="referenceseeker_db_import", base_command=["referenceseeker_db", "import"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="ReferenceSeeker database path")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome path [Fasta, GenBank, EMBL]")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="Unique genome identifier (default sequence id of first\nrecord)")), ToolInput(tag="in_taxonomy", input_type=Int(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy ID (default = 12908 [unclassified sequences])")), ToolInput(tag="in_status", input_type=String(optional=True), prefix="--status", doc=InputDocumentation(doc="Assembly level (default = contig)")), ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism name (default = '')\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Referenceseeker_Db_Import_V0_1_0().translate("wdl", allow_empty_container=True)

