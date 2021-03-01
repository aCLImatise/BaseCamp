from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Cbimportcellranger_V0_1_0 = CommandToolBuilder(tool="cbImportCellranger", base_command=["cbImportCellranger"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--inDir", doc=InputDocumentation(doc="input folder with the cellranger analysis output. This\nis the directory with the two directories 'analysis'\nand 'filtered_gene_bc_matrices'")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name of the dataset. No spaces or special characters.")), ToolInput(tag="in_no_mat", input_type=Boolean(optional=True), prefix="--noMat", doc=InputDocumentation(doc="do not export the matrix again, saves some time if you\nchanged something small since the last run\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container="quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbimportcellranger_V0_1_0().translate("wdl")

