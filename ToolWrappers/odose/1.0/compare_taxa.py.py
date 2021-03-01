from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Compare_Taxa_Py_V0_1_0 = CommandToolBuilder(tool="compare_taxa.py", base_command=["compare_taxa.py"], inputs=[ToolInput(tag="in_unfiltered_tax_on_a", input_type=File(optional=True), prefix="--unfiltered-taxon-a", doc=InputDocumentation(doc="genome IDs for taxon A as deduced from phylogenetic tree of unfiltered concatemers")), ToolInput(tag="in_unfiltered_tax_on_b", input_type=File(optional=True), prefix="--unfiltered-taxon-b", doc=InputDocumentation(doc="genome IDs for taxon B as deduced from phylogenetic tree of unfiltered concatemers")), ToolInput(tag="in_filtered_tax_on_a", input_type=File(optional=True), prefix="--filtered-taxon-a", doc=InputDocumentation(doc="genome IDs for taxon A as deduced from phylogenetic tree of filtered concatemers")), ToolInput(tag="in_filtered_tax_on_b", input_type=File(optional=True), prefix="--filtered-taxon-b", doc=InputDocumentation(doc="genome IDs for taxon B as deduced from phylogenetic tree of filtered concatemers"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Taxa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

