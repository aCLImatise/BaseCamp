from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Genebody_Coverage2_Py_V0_1_0 = CommandToolBuilder(tool="geneBody_coverage2.py", base_command=["geneBody_coverage2.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Coverage signal file in bigwig format")), ToolInput(tag="in_ref_gene", input_type=String(optional=True), prefix="--refgene", doc=InputDocumentation(doc="Reference gene model in bed format. [required]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="Prefix of output files(s). [required]")), ToolInput(tag="in_graph_type", input_type=File(optional=True), prefix="--graph-type", doc=InputDocumentation(doc="Graphic file type in 'pdf', 'jpeg', 'bmp', 'bmp',\n'tiff' or 'png'.default=pdf [optional]\n"))], outputs=[], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genebody_Coverage2_Py_V0_1_0().translate("wdl")

