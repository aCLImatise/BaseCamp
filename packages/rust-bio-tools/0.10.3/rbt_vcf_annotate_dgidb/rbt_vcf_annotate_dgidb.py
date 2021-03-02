from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Rbt_Vcf_Annotate_Dgidb_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_annotate_dgidb", base_command=["rbt", "vcf-annotate-dgidb"], inputs=[ToolInput(tag="in_api_path", input_type=File(optional=True), prefix="--api-path", doc=InputDocumentation(doc="url prefix for requesting interaction drugs by gene names. [default:\nhttp://dgidb.org/api/v2/interactions.json?genes=]")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="Info field name to be used for annotation. [default: dgiDB_drugs]")), ToolInput(tag="in_genes_per_request", input_type=Int(optional=True), prefix="--genes-per-request", doc=InputDocumentation(doc="Number of genes to submit per api request. A lower value increases the number of api requests in return.\nToo many requests could be rejected by the DGIdb server.\n[default: 500]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Annotate_Dgidb_V0_1_0().translate("wdl", allow_empty_container=True)

