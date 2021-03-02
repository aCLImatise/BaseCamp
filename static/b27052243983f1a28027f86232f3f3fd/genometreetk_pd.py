from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Genometreetk_Pd_V0_1_0 = CommandToolBuilder(tool="genometreetk_pd", base_command=["genometreetk", "pd"], inputs=[ToolInput(tag="in_per_tax_a_pg_file", input_type=File(optional=True), prefix="--per_taxa_pg_file", doc=InputDocumentation(doc="file to record phylogenetic gain of each ingroup taxa\nrelative to the outgroup")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc="newick tree")), ToolInput(tag="in_tax_a_list", input_type=String(), position=1, doc=InputDocumentation(doc="list of ingroup taxa, one per line, to calculated PD")), ToolInput(tag="in_over", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Pd_V0_1_0().translate("wdl", allow_empty_container=True)

