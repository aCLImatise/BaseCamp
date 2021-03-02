from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Centrifuge_Inspect_Bin_V0_1_0 = CommandToolBuilder(tool="centrifuge_inspect_bin", base_command=["centrifuge-inspect-bin"], inputs=[ToolInput(tag="in_across", input_type=Int(optional=True), prefix="--across", doc=InputDocumentation(doc="Number of characters across in FASTA output (default: 60)")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="Print reference sequence names only")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Print summary incl. ref names, lengths, index properties")), ToolInput(tag="in_bt_two_ref", input_type=Boolean(optional=True), prefix="--bt2-ref", doc=InputDocumentation(doc="Reconstruct reference from .cf (slow, preserves colors)")), ToolInput(tag="in_conversion_table", input_type=String(optional=True), prefix="--conversion-table", doc=InputDocumentation(doc="conversion table")), ToolInput(tag="in_taxonomy_tree", input_type=Boolean(optional=True), prefix="--taxonomy-tree", doc=InputDocumentation(doc="Print taxonomy tree")), ToolInput(tag="in_name_table", input_type=Boolean(optional=True), prefix="--name-table", doc=InputDocumentation(doc="Print names corresponding to taxonomic IDs")), ToolInput(tag="in_size_table", input_type=Boolean(optional=True), prefix="--size-table", doc=InputDocumentation(doc="Print the lengths of the sequences belonging to the same taxonomic ID")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output (for debugging)")), ToolInput(tag="in_centrifuge_inspect", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Inspect_Bin_V0_1_0().translate("wdl")

