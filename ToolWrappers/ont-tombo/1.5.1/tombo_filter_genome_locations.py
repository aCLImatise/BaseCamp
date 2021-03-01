from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, Boolean

Tombo_Filter_Genome_Locations_V0_1_0 = CommandToolBuilder(tool="tombo_filter_genome_locations", base_command=["tombo", "filter", "genome_locations"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_include_regions", input_type=Array(t=String(), optional=True), prefix="--include-regions", doc=InputDocumentation(doc="Filter out reads not falling completely within include\nregions. Omit start and end coordinates to include an\nentire chromosome/sequence record. Format regions as\n'chrm[:start-end] [chrm2[:start2-end2] ...]'.")), ToolInput(tag="in_include_partial_overlap", input_type=Boolean(optional=True), prefix="--include-partial-overlap", doc=InputDocumentation(doc="Include reads that partially overlap the specified\nregion. Default: Only include reads completely\ncontained in a specified region")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Filter_Genome_Locations_V0_1_0().translate("wdl", allow_empty_container=True)

