from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Faithpd_V0_1_0 = CommandToolBuilder(tool="faithpd", base_command=["faithpd"], inputs=[ToolInput(tag="in_input_biom_table", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="The input BIOM table.")), ToolInput(tag="in_input_phylogeny_newick", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="The input phylogeny in newick.")), ToolInput(tag="in_the_output_series", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="The output series."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Faithpd_V0_1_0().translate("wdl", allow_empty_container=True)

