from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Int

Pegasus_Enrichment_V0_1_0 = CommandToolBuilder(tool="pegasus_enrichment", base_command=["pegasus", "enrichment"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism. See https://biit.cs.ut.ee/gprofiler/page/organism-list for full list. [default: hsapiens]")), ToolInput(tag="in_enrichment_threshold", input_type=Float(optional=True), prefix="--enrichment_threshold", doc=InputDocumentation(doc="Include enrichment results with corrected p-value less than this threshold. [default: 0.05]")), ToolInput(tag="in_max_genes", input_type=Int(optional=True), prefix="--max_genes", doc=InputDocumentation(doc="Maximum number of genes to include in query. [default: 100]")), ToolInput(tag="in_markers_spreadsheet", input_type=String(), position=0, doc=InputDocumentation(doc="Output spreadsheet from de_analysis command.")), ToolInput(tag="in_output_spreadsheet", input_type=String(), position=1, doc=InputDocumentation(doc="File containing enrichment results.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="An xlsx file containing enrichment results."))], outputs=[], container="quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasus_Enrichment_V0_1_0().translate("wdl")

