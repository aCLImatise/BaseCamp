from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Ggd_Search_V0_1_0 = CommandToolBuilder(tool="ggd_search", base_command=["ggd", "search"], inputs=[ToolInput(tag="in_search_type", input_type=String(optional=True), prefix="--search-type", doc=InputDocumentation(doc="(Optional) How to search for data packages with the\nsearch terms provided. Options = 'combined-only',\n'non-combined-only', and 'both'. 'combined-only' will\nuse the provided search terms as a single search term.\n'non-combined-only' will use the provided search term\nto search for data package that match each search term\nseparately. 'both' will use the search terms combined\nand each search term separately to search for data\npackages. Default = 'both'")), ToolInput(tag="in_genome_build", input_type=String(optional=True), prefix="--genome-build", doc=InputDocumentation(doc="(Optional) Filter results by the genome build of the\ndesired recipe")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="(Optional) Filter results by the species for the\ndesired recipe")), ToolInput(tag="in_display_number", input_type=Int(optional=True), prefix="--display-number", doc=InputDocumentation(doc="(Optional) The number of search results to display.\n(Default = 5)")), ToolInput(tag="in_match_score", input_type=Int(optional=True), prefix="--match-score", doc=InputDocumentation(doc="(Optional) A score between 0 and 100 to use to filter\nthe results by. (Default = 90). The lower the number\nthe more results will be output")), ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="(Optional) The ggd channel to search. (Default =\ngenomics)\n")), ToolInput(tag="in_search_term", input_type=String(), position=0, doc=InputDocumentation(doc="**Required** The term(s) to search for. Multiple terms\ncan be used. Example: 'ggd search reference genome'"))], outputs=[], container="quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Search_V0_1_0().translate("wdl")

