from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Cbimportscanpy_V0_1_0 = CommandToolBuilder(tool="cbImportScanpy", base_command=["cbImportScanpy"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--inFile", doc=InputDocumentation(doc="input .h5ad file. Required parameter")), ToolInput(tag="in_proc", input_type=Boolean(optional=True), prefix="--proc", doc=InputDocumentation(doc="when exporting, do not use the raw input data, instead\nuse the normalized and corrected matrix scanpy. This\nhas no effect if the anndata.raw attribute is not used\nin the anndata object")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outDir", doc=InputDocumentation(doc="Output directory. Required parameter")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Dataset name for generated cellbrowser.conf. If not\nspecified, the last component of -o will be used.")), ToolInput(tag="in_only_convert_tabsep", input_type=String(optional=True), prefix="--htmlDir", doc=InputDocumentation(doc="do not only convert to tab-sep files but also run\ncbBuild toconvert the data and add the dataset under\nhtmlDir")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="only with --htmlDir: start webserver on port to serve")), ToolInput(tag="in__markerfieldmarkerfield", input_type=String(), position=0, doc=InputDocumentation(doc="--markerField=MARKERFIELD")), ToolInput(tag="in_rank_genes_groups", input_type=String(), position=0, doc=InputDocumentation(doc="--clusterField=CLUSTERFIELD")), ToolInput(tag="in_others", input_type=String(), position=0, doc=InputDocumentation(doc="-m, --skipMatrix      do not convert the matrix, saves time if the same one"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory. Required parameter"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbimportscanpy_V0_1_0().translate("wdl", allow_empty_container=True)

