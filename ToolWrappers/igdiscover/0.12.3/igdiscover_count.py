from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float, Int

Igdiscover_Count_V0_1_0 = CommandToolBuilder(tool="igdiscover_count", base_command=["igdiscover", "count"], inputs=[ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="Which gene type: Choose V, D or J. Default: Default: V")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="Compute expressions for the sequences that are named\nin the FASTA file. Only the sequence names in the file\nare used! This is the only way to also include genes\nwith an expression of zero.")), ToolInput(tag="in_plot", input_type=File(optional=True), prefix="--plot", doc=InputDocumentation(doc="Plot expressions to FILE (PDF or PNG)")), ToolInput(tag="in_d_evalue", input_type=Float(optional=True), prefix="--d-evalue", doc=InputDocumentation(doc="Maximal allowed E-value for D gene match. Default:\n1E-4 if --gene=D, no restriction otherwise.")), ToolInput(tag="in_d_coverage", input_type=Int(optional=True), prefix="--d-coverage", doc=InputDocumentation(doc="Minimum D coverage (in percent). Default: 70 if\n--gene=D, no restriction otherwise.")), ToolInput(tag="in_d_errors", input_type=String(optional=True), prefix="--d-errors", doc=InputDocumentation(doc="Maximum allowed D errors. Default: No limit.")), ToolInput(tag="in_allele_ratio", input_type=String(optional=True), prefix="--allele-ratio", doc=InputDocumentation(doc="Required allele ratio. Works only for genes named\n'NAME*ALLELE'. Default: Do not check allele ratio.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Count_V0_1_0().translate("wdl", allow_empty_container=True)

