from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Svtk_Resolve_V0_1_0 = CommandToolBuilder(tool="svtk_resolve", base_command=["svtk", "resolve"], inputs=[ToolInput(tag="in_disc_file", input_type=File(optional=True), prefix="--discfile", doc=InputDocumentation(doc="Scraped discordant pairs. Required to attempt to\nresolve single-ender inversions.")), ToolInput(tag="in_disc_file_list", input_type=File(optional=True), prefix="--discfile-list", doc=InputDocumentation(doc="Tab-delimited list of discordant pair files and\nindices")), ToolInput(tag="in_mei_bed", input_type=String(optional=True), prefix="--mei-bed", doc=InputDocumentation(doc="Mobile element insertion bed. Required to classify\ninverted insertions.")), ToolInput(tag="in_cytoband_s", input_type=File(optional=True), prefix="--cytobands", doc=InputDocumentation(doc="Cytoband file. Required to correctly classify\ninterchromosomal events.")), ToolInput(tag="in_min_rescan_pe_support", input_type=Int(optional=True), prefix="--min-rescan-pe-support", doc=InputDocumentation(doc="Minumum discordant pairs required during single-ender\nrescan.")), ToolInput(tag="in_pe_blacklist", input_type=String(optional=True), prefix="--pe-blacklist", doc=InputDocumentation(doc="Tabix indexed bed of blacklisted regions. Any\nanomalous pair falling inside one of these regions is\nexcluded from PE rescanning.")), ToolInput(tag="in_unresolved", input_type=String(optional=True), prefix="--unresolved", doc=InputDocumentation(doc="Unresolved complex breakpoints and CNV.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Variant prefix [CPX_]")), ToolInput(tag="in_quiet", input_type=String(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Disable progress logging to stderr.\n")), ToolInput(tag="in_raw", input_type=String(), position=0, doc=InputDocumentation(doc="Filtered breakpoints and CNV intervals.")), ToolInput(tag="in_resolved", input_type=String(), position=1, doc=InputDocumentation(doc="Resolved simple and complex variants."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Resolve_V0_1_0().translate("wdl", allow_empty_container=True)

