from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Extract_Promoter_Regions_Py_V0_1_0 = CommandToolBuilder(tool="extract_promoter_regions.py", base_command=["extract_promoter_regions.py"], inputs=[ToolInput(tag="in_no_neighbours", input_type=String(optional=True), prefix="--no-neighbours", doc=InputDocumentation(doc="Ignore the presence of neighbours when extracting")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Output will be compressed in GZip format.")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc="gff3")), ToolInput(tag="in_gene_list", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:")), ToolInput(tag="in_genes_dot", input_type=String(), position=2, doc=InputDocumentation(doc="-eu, --exclude-utr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Promoter_Regions_Py_V0_1_0().translate("wdl", allow_empty_container=True)

