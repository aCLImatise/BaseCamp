from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Rsat_Peak_Motifs_V0_1_0 = CommandToolBuilder(tool="rsat_peak_motifs", base_command=["rsat", "peak-motifs"], inputs=[ToolInput(tag="in_disco", input_type=String(optional=True), prefix="-disco", doc=InputDocumentation(doc=",dyads")), ToolInput(tag="in_two_tails", input_type=Boolean(optional=True), prefix="-two_tails", doc=InputDocumentation(doc=", which detects both under- and over-represented patterns.")), ToolInput(tag="in_peak_motifs", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_testing_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Matthieu Defrance <defrance@ccg.unam.mx>")), ToolInput(tag="in_supported_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mOUTPUT FORMAT[0m")), ToolInput(tag="in_track_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The 4th column of the BED file must correspond to the fasta headers.")), ToolInput(tag="in_file_be_mb", input_type=String(), position=0, doc=InputDocumentation(doc="The file should be sufficiently large (several Mb) to provide a")), ToolInput(tag="in_server_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-disco")), ToolInput(tag="in_tasks_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[33msynthesis[0m")), ToolInput(tag="in_when_option_mnomergelengthsm", input_type=String(), position=0, doc=InputDocumentation(doc="When the option [33m-no_merge_lengths[0m is active, matrices are built")), ToolInput(tag="in_one_five_seven_eight_eight_eight_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="[33mmatrix-quality[0m")), ToolInput(tag="in_pss_mdot", input_type=String(), position=0, doc=InputDocumentation(doc="If included by default, they can take a lot of disk space for large"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Peak_Motifs_V0_1_0().translate("wdl", allow_empty_container=True)

