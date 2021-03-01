from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File

Secapr_Locus_Selection_V0_1_0 = CommandToolBuilder(tool="secapr_locus_selection", base_command=["secapr", "locus_selection"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The folder with the results of the reference based")), ToolInput(tag="in_n_loci_represented", input_type=String(optional=True), prefix="--n", doc=InputDocumentation(doc="The n loci that are best represented accross all\nsamples will be extracted.")), ToolInput(tag="in_read_cov", input_type=String(optional=True), prefix="--read_cov", doc=InputDocumentation(doc="The threshold for what average read coverage the\nselected target loci should at least have.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to reference library fasta file (secapr will find\nit by itself if the reference assembly was executed\nwith secapr).\n")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="")), ToolInput(tag="in_assembly_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--output OUTPUT       The output directory where results will be safed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Locus_Selection_V0_1_0().translate("wdl", allow_empty_container=True)

