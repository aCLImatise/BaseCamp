from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Rsat_Download_Organism_V0_1_0 = CommandToolBuilder(tool="rsat_download_organism", base_command=["rsat", "download-organism"], inputs=[ToolInput(tag="in_org", input_type=String(optional=True), prefix="-org", doc=InputDocumentation(doc="\")), ToolInput(tag="in_ssh", input_type=String(optional=True), prefix="-ssh", doc=InputDocumentation(doc=":rsat_path_on_server")), ToolInput(tag="in_download_organism", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_jacques_do_tv_and_otheldenatulbdotacdotbe", input_type=String(), position=0, doc=InputDocumentation(doc="[1mCATEGORY[0m")), ToolInput(tag="in_supported_organisms_server", input_type=String(), position=0, doc=InputDocumentation(doc="The query to the remote server can also be restricted to a given taxon.")), ToolInput(tag="in_rs_at_dot", input_type=String(), position=0, doc=InputDocumentation(doc="This differs from [33mdownload-organism[0m, which transfers the RSAT-formatted")), ToolInput(tag="in_wget_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1manonymous rsync[0m")), ToolInput(tag="in_escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two", input_type=Float(), position=0, doc=InputDocumentation(doc="The option -org can be used iteratively on teh command line to"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Download_Organism_V0_1_0().translate("wdl", allow_empty_container=True)

