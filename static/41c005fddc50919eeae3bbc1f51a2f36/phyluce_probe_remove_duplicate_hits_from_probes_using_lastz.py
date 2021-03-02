from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Phyluce_Probe_Remove_Duplicate_Hits_From_Probes_Using_Lastz_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_remove_duplicate_hits_from_probes_using_lastz", base_command=["phyluce_probe_remove_duplicate_hits_from_probes_using_lastz"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="The fasta file to screen")), ToolInput(tag="in_last_z", input_type=File(optional=True), prefix="--lastz", doc=InputDocumentation(doc="The lastz file to use")), ToolInput(tag="in_probe_prefix", input_type=String(optional=True), prefix="--probe-prefix", doc=InputDocumentation(doc="The prefix (e.g. 'uce-') added to all probes designed")), ToolInput(tag="in_probe_regex", input_type=String(optional=True), prefix="--probe-regex", doc=InputDocumentation(doc="The regular expression to use for matching probes")), ToolInput(tag="in_probe_bed", input_type=File(optional=True), prefix="--probe-bed", doc=InputDocumentation(doc="The path to a file contaning the probe coordinates in\nBED format")), ToolInput(tag="in_locus_bed", input_type=File(optional=True), prefix="--locus-bed", doc=InputDocumentation(doc="The path to a file contaning the locus coordinates in\nBED format")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="If the lastz output is the longfield format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Remove_Duplicate_Hits_From_Probes_Using_Lastz_V0_1_0().translate("wdl", allow_empty_container=True)

