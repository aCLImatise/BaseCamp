from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Collectreadsequencesforlocalgapclosing_V0_1_0 = CommandToolBuilder(tool="collectReadSequencesForLocalGapClosing", base_command=["collectReadSequencesForLocalGapClosing"], inputs=[ToolInput(tag="in_faux_reads_file", input_type=File(optional=True), prefix="--faux-reads-file", doc=InputDocumentation(doc="*Name of the faux reads file")), ToolInput(tag="in_faux_read_matches_to_kunis_file", input_type=File(optional=True), prefix="--faux-read-matches-to-kunis-file", doc=InputDocumentation(doc="*Name of the file with matches from faux reads to k-unitigs")), ToolInput(tag="in_read_matches_to_kunis_file", input_type=File(optional=True), prefix="--read-matches-to-kunis-file", doc=InputDocumentation(doc="*Name of the file with matches from reads to k-unitigs")), ToolInput(tag="in_reads_file", input_type=File(optional=True), prefix="--reads-file", doc=InputDocumentation(doc="Name of the reads file(s)")), ToolInput(tag="in_dir_for_gaps", input_type=File(optional=True), prefix="--dir-for-gaps", doc=InputDocumentation(doc="Directory to use for files we keep for local gap closing (.)")), ToolInput(tag="in_num_joins_per_directory", input_type=Int(optional=True), prefix="--num-joins-per-directory", doc=InputDocumentation(doc="Number of joins put in each directory (1)")), ToolInput(tag="in_max_reads_in_memory", input_type=Int(optional=True), prefix="--max-reads-in-memory", doc=InputDocumentation(doc="Number of reads to hold in memory for gap closing bins (100000000)")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collectreadsequencesforlocalgapclosing_V0_1_0().translate("wdl", allow_empty_container=True)

