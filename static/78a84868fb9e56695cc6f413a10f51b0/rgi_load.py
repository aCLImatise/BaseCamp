from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Rgi_Load_V0_1_0 = CommandToolBuilder(tool="rgi_load", base_command=["rgi", "load"], inputs=[ToolInput(tag="in_card_json", input_type=File(optional=True), prefix="--card_json", doc=InputDocumentation(doc="must be a card database json file")), ToolInput(tag="in_card_annotation", input_type=String(optional=True), prefix="--card_annotation", doc=InputDocumentation(doc="annotated reference FASTA")), ToolInput(tag="in_wildcard_annotation", input_type=String(optional=True), prefix="--wildcard_annotation", doc=InputDocumentation(doc="annotated reference FASTA")), ToolInput(tag="in_wildcard_index", input_type=File(optional=True), prefix="--wildcard_index", doc=InputDocumentation(doc="wildcard index file (index-for-model-sequences.txt)")), ToolInput(tag="in_wildcard_version", input_type=String(optional=True), prefix="--wildcard_version", doc=InputDocumentation(doc="specify variants version used")), ToolInput(tag="in_baits_annotation", input_type=String(optional=True), prefix="--baits_annotation", doc=InputDocumentation(doc="annotated reference FASTA")), ToolInput(tag="in_baits_index", input_type=File(optional=True), prefix="--baits_index", doc=InputDocumentation(doc="baits index file (baits-probes-with-sequence-info.txt)")), ToolInput(tag="in_km_er_database", input_type=String(optional=True), prefix="--kmer_database", doc=InputDocumentation(doc="json of kmer database")), ToolInput(tag="in_amr_km_ers", input_type=File(optional=True), prefix="--amr_kmers", doc=InputDocumentation(doc="txt file of all amr kmers")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer_size", doc=InputDocumentation(doc="kmer size if loading kmer files")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="use local database (default: uses database in\nexecutable directory)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Load_V0_1_0().translate("wdl", allow_empty_container=True)

