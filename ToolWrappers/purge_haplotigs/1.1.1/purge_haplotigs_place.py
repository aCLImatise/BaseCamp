from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Purge_Haplotigs_Place_V0_1_0 = CommandToolBuilder(tool="purge_haplotigs_place", base_command=["purge_haplotigs", "place"], inputs=[ToolInput(tag="in_primary", input_type=Boolean(optional=True), prefix="-primary", doc=InputDocumentation(doc="Primary contigs fasta file")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc="Placement file name. DEFAULT = ncbi_placements.tsv")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="Threads for Minimap2. DEFAULT = 4")), ToolInput(tag="in_coverage", input_type=Boolean(optional=True), prefix="-coverage", doc=InputDocumentation(doc="Coverage cutoff percentage for pairing contigs.\nDEFAULT = 50 (%)")), ToolInput(tag="in_falcon_naming", input_type=Boolean(optional=True), prefix="-falconNaming", doc=InputDocumentation(doc="Rename contigs in the style used by FALCON Unzip. Saved\nto <in-prefix>.FALC.fasta\n")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purge_Haplotigs_Place_V0_1_0().translate("wdl", allow_empty_container=True)

