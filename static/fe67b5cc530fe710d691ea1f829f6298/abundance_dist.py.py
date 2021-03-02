from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Abundance_Dist_Py_V0_1_0 = CommandToolBuilder(tool="abundance_dist.py", base_command=["abundance-dist.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_no_zero", input_type=Boolean(optional=True), prefix="--no-zero", doc=InputDocumentation(doc="Do not output zero-count bins (default: True)")), ToolInput(tag="in_squash", input_type=Boolean(optional=True), prefix="--squash", doc=InputDocumentation(doc="Overwrite existing output_histogram_filename (default:\nFalse)")), ToolInput(tag="in_no_big_count", input_type=Boolean(optional=True), prefix="--no-bigcount", doc=InputDocumentation(doc="Do not count k-mers past 255 (default: True)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Continue even if specified input files do not exist or\nare empty. (default: False)")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_calculate_abundance_distribution", input_type=String(), position=0, doc=InputDocumentation(doc="Calculate abundance distribution of the k-mers in the sequence file using a")), ToolInput(tag="in_input_count_graph_filename", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the input k-mer countgraph file.")), ToolInput(tag="in_input_sequence_filename", input_type=String(), position=1, doc=InputDocumentation(doc="The name of the input FAST[AQ] sequence file.")), ToolInput(tag="in_columns_kmer_abundance", input_type=String(), position=2, doc=InputDocumentation(doc="The columns are: (1) k-mer abundance, (2) k-mer count,\n(3) cumulative count, (4) fraction of total distinct\nk-mers."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abundance_Dist_Py_V0_1_0().translate("wdl", allow_empty_container=True)

