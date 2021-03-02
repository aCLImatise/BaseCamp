from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ghost_Tree_Scaffold_Hybrid_Tree_Foundation_Alignment_V0_1_0 = CommandToolBuilder(tool="ghost_tree_scaffold_hybrid_tree_foundation_alignment", base_command=["ghost-tree", "scaffold", "hybrid-tree-foundation-alignment"], inputs=[ToolInput(tag="in_graft_level", input_type=Boolean(optional=True), prefix="--graft-level", doc=InputDocumentation(doc="[p|c|o|f|g]    Taxonomic level to graft extensions to\nfoundation. Default is g (genus). p=phylum,\nc=class, o=order, f=family.")), ToolInput(tag="in_stderr", input_type=Boolean(optional=True), prefix="--stderr", doc=InputDocumentation(doc="Saves error log file (optional)")), ToolInput(tag="in_save_foundation_alignment", input_type=Boolean(optional=True), prefix="--save-foundation-alignment", doc=InputDocumentation(doc="Saves non-redundant foundation alignment file\n(optional)")), ToolInput(tag="in_save_foundation_tree", input_type=Boolean(optional=True), prefix="--save-foundation-tree", doc=InputDocumentation(doc="Saves foundation phylogenetic tree file\n(optional)")), ToolInput(tag="in_exclude_id_list", input_type=Boolean(optional=True), prefix="--exclude-id-list", doc=InputDocumentation(doc="Will not save accession id file (optional)")), ToolInput(tag="in_ghost_tree_output_folder", input_type=String(), position=0, doc=InputDocumentation(doc="Make hybrid-tree using foundation alignment."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ghost_Tree_Scaffold_Hybrid_Tree_Foundation_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

