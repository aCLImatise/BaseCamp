from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int

Motifraptor_Snpscan_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_snpscan", base_command=["MotifRaptor", "snpscan"], inputs=[ToolInput(tag="in_indexed_genome_db", input_type=String(optional=True), prefix="--indexed_genome_db", doc=InputDocumentation(doc="indexed genome_database_folder")), ToolInput(tag="in_pfm_folder", input_type=Directory(optional=True), prefix="--pfm_folder", doc=InputDocumentation(doc="motif pmf files folder")), ToolInput(tag="in_motifscan_output", input_type=Directory(optional=True), prefix="--motifscan_output", doc=InputDocumentation(doc="Motif Scan Ouput Folder")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Snpscan_V0_1_0().translate("wdl", allow_empty_container=True)

