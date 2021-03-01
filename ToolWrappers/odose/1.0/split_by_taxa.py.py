from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Split_By_Taxa_Py_V0_1_0 = CommandToolBuilder(tool="split_by_taxa.py", base_command=["split_by_taxa.py"], inputs=[ToolInput(tag="in_genomes_a", input_type=File(optional=True), prefix="--genomes-a", doc=InputDocumentation(doc="file with genome GenBank Project ID and Organism name on each line for taxon A")), ToolInput(tag="in_genomes_b", input_type=File(optional=True), prefix="--genomes-b", doc=InputDocumentation(doc="file with genome GenBank Project ID and Organism name on each line for taxon B")), ToolInput(tag="in_orthologs_zip", input_type=File(optional=True), prefix="--orthologs-zip", doc=InputDocumentation(doc="archive of aligned & trimmed single copy orthologous (SICO) genes")), ToolInput(tag="in_tax_on_a_zip", input_type=File(optional=True), prefix="--taxon-a-zip", doc=InputDocumentation(doc="destination file path for archive of SICO genes belonging to taxon A")), ToolInput(tag="in_tax_on_b_zip", input_type=File(optional=True), prefix="--taxon-b-zip", doc=InputDocumentation(doc="destination file path for archive of SICO genes belonging to taxon B"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_By_Taxa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

