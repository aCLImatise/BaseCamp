from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Vir_Gwpa_V0_1_0 = CommandToolBuilder(tool="deepac_vir_gwpa", base_command=["deepac-vir", "gwpa"], inputs=[ToolInput(tag="in_details_dot", input_type=String(), position=0, doc=InputDocumentation(doc="fragment            Fragment genomes for analysis.")), ToolInput(tag="in_genome_map", input_type=String(), position=1, doc=InputDocumentation(doc="Generate a genome-wide phenotype potential map.")), ToolInput(tag="in_g_ranking", input_type=String(), position=2, doc=InputDocumentation(doc="Generate gene rankings.")), ToolInput(tag="in_nt_contribs", input_type=String(), position=3, doc=InputDocumentation(doc="Generate a genome-wide nt contribution map.")), ToolInput(tag="in_fact_iv", input_type=String(), position=4, doc=InputDocumentation(doc="Get filter activations.")), ToolInput(tag="in_f_enrichment", input_type=String(), position=5, doc=InputDocumentation(doc="Run filter enrichment analysis."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Gwpa_V0_1_0().translate("wdl", allow_empty_container=True)

