from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Install_Ensembl_Genome_V0_1_0 = CommandToolBuilder(tool="rsat_install_ensembl_genome", base_command=["rsat", "install-ensembl-genome"], inputs=[ToolInput(tag="in_install_ensembl_genome", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_package_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mdownload-ensembl-features[0m")), ToolInput(tag="in_latest", input_type=String(), position=0, doc=InputDocumentation(doc="This corresponds to the lastest release of Ensembl. Beware: this\nrelease is not guaranteed to be compatible with RSAT, in case\nEnsembl would change their file formats or locations.")), ToolInput(tag="in_analysis_dot", input_type=String(), position=0, doc=InputDocumentation(doc="This task is executed by running [33minstall-organism[0m.")), ToolInput(tag="in_incomplete_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-dry[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Install_Ensembl_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

