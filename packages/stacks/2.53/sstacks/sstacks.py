from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sstacks_V0_1_0 = CommandToolBuilder(tool="sstacks", base_command=["sstacks"], inputs=[ToolInput(tag="in_in_path", input_type=Boolean(optional=True), prefix="--in-path", doc=InputDocumentation(doc=": path to the directory containing Stacks files.")), ToolInput(tag="in_pop_map", input_type=Boolean(optional=True), prefix="--popmap", doc=InputDocumentation(doc=": path to a population map file from which to take sample names.")), ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="--sample", doc=InputDocumentation(doc=": filename prefix from which to load sample loci.")), ToolInput(tag="in_catalog", input_type=Boolean(optional=True), prefix="--catalog", doc=InputDocumentation(doc=": path to the catalog.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc=": enable parallel execution with n_threads threads.")), ToolInput(tag="in_out_path", input_type=File(optional=True), prefix="--out-path", doc=InputDocumentation(doc=": output path to write results.")), ToolInput(tag="in_verify_haplotype_locus", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": don't verify haplotype of matching locus.")), ToolInput(tag="in_disable_gapped", input_type=Boolean(optional=True), prefix="--disable-gapped", doc=InputDocumentation(doc=": disable gapped alignments between stacks (default: enable gapped alignments)."))], outputs=[ToolOutput(tag="out_out_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_path", type_hint=File()), doc=OutputDocumentation(doc=": output path to write results."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sstacks_V0_1_0().translate("wdl", allow_empty_container=True)

