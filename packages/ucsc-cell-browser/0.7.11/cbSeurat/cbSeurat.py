from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, Int, String

Cbseurat_V0_1_0 = CommandToolBuilder(tool="cbSeurat", base_command=["cbSeurat"], inputs=[ToolInput(tag="in_in_it", input_type=Boolean(optional=True), prefix="--init", doc=InputDocumentation(doc="copy sample seurat.conf to current directory")), ToolInput(tag="in_expr_matrix", input_type=File(optional=True), prefix="--exprMatrix", doc=InputDocumentation(doc="gene-cell expression matrix file, possible formats:\n.mtx, .txt.gz, .csv.gz, .rds. For .mtx, specify the\ndirectory where the matrix.mtx file is stored, e.g.\nfiltered_gene_bc_matrices/hg19/")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_conf_fname", input_type=File(optional=True), prefix="--confFname", doc=InputDocumentation(doc="config file from which settings are read, default is\nseurat.conf")), ToolInput(tag="in_thread_count", input_type=Int(optional=True), prefix="--threadCount", doc=InputDocumentation(doc="Number of threads to use via the future library.\nDefault is not use multithreading, so there is no\nrequirement for future library")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="internal name of dataset in cell browser. No spaces or\nspecial characters.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug output"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbseurat_V0_1_0().translate("wdl", allow_empty_container=True)

