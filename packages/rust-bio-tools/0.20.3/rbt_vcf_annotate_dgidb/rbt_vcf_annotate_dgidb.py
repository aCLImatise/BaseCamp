from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Rbt_Vcf_Annotate_Dgidb_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_annotate_dgidb", base_command=["rbt", "vcf-annotate-dgidb"], inputs=[ToolInput(tag="in_api_path", input_type=File(optional=True), prefix="--api-path", doc=InputDocumentation(doc="Url prefix for requesting interaction drugs by gene names [default:\nhttp://dgidb.org/api/v2/interactions.json?genes=]")), ToolInput(tag="in_data_sources", input_type=Int(optional=True), prefix="--datasources", doc=InputDocumentation(doc="...\nA list of data sources included in query. If omitted all sources are considered. A list of all sources can\nbe found at http://dgidb.org/api/v2/interaction_sources.json")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="Info field name to be used for annotation [default: dgiDB_drugs]")), ToolInput(tag="in_genes_per_request", input_type=Int(optional=True), prefix="--genes-per-request", doc=InputDocumentation(doc="Number of genes to submit per api request. A lower value increases the number of api requests in return. Too\nmany requests could be rejected by the DGIdb server [default: 500]"))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Annotate_Dgidb_V0_1_0().translate("wdl")

