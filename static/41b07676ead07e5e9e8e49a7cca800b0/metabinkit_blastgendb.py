from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Metabinkit_Blastgendb_V0_1_0 = CommandToolBuilder(tool="metabinkit_blastgendb", base_command=["metabinkit_blastgendb"], inputs=[ToolInput(tag="in_mapping_sequence_d", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="- mapping between the sequence id and the taxid (tab separted). if none is found it will look for taxid=xxxx; in the fasta header after the first space and consider the word up to the first space or | as the sequence id.")), ToolInput(tag="in_check_database_creating", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="- check database after creating it")), ToolInput(tag="in_maximum_number_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="- maximum number of threads (default:2)")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="- print version and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metabinkit_Blastgendb_V0_1_0().translate("wdl", allow_empty_container=True)

