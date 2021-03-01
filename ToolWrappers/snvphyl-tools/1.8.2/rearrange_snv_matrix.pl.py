from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Rearrange_Snv_Matrix_Pl_V0_1_0 = CommandToolBuilder(tool="rearrange_snv_matrix.pl", base_command=["rearrange_snv_matrix.pl"], inputs=[ToolInput(tag="in_tree", input_type=Boolean(optional=True), prefix="--tree", doc=InputDocumentation(doc="[required]\nNewick input file describing the phylogenetic tree.")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="[required]\nThe directory for output files.")), ToolInput(tag="in_phy", input_type=Boolean(optional=True), prefix="--phy", doc=InputDocumentation(doc="[required]\nInput snv_align.phy file.")), ToolInput(tag="in_matrix", input_type=Boolean(optional=True), prefix="--matrix", doc=InputDocumentation(doc="[required]\nInput matrix.csv file.")), ToolInput(tag="in_keep_tmp", input_type=Boolean(optional=True), prefix="--keep-tmp", doc=InputDocumentation(doc="[optional]\nKeep the temp log upon exiting the script.")), ToolInput(tag="in_convert", input_type=Boolean(optional=True), prefix="--convert", doc=InputDocumentation(doc="[optional]\nConvert the branch lengths to an estimate of the total SNV number.")), ToolInput(tag="in_root", input_type=Boolean(optional=True), prefix="--root", doc=InputDocumentation(doc="[optional]\nThe name of the strain to use as the root for the phylogenetic tree.")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="[optional]\nEither 'increasing' or 'decreasing', indicating the order in which\nto sort nodes in the output phylogenetic tree."))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="[required]\nThe directory for output files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rearrange_Snv_Matrix_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

