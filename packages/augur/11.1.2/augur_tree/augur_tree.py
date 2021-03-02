from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Augur_Tree_V0_1_0 = CommandToolBuilder(tool="augur_tree", base_command=["augur", "tree"], inputs=[ToolInput(tag="in_alignment", input_type=String(optional=True), prefix="--alignment", doc=InputDocumentation(doc="alignment in fasta or VCF format (default: None)")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="tree builder to use (default: iqtree)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="file name to write tree to (default: None)")), ToolInput(tag="in_substitution_model", input_type=Boolean(optional=True), prefix="--substitution-model", doc=InputDocumentation(doc="{HKY,GTR,HKY+G,GTR+G,GTR+R10}\nsubstitution model to use. Specify 'none' to run\nModelTest. Currently, only available for IQTREE.\n(default: GTR)")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="number of threads to use; specifying the value 'auto'\nwill cause the number of available CPU cores on your\nsystem, if determinable, to be used (default: 1)")), ToolInput(tag="in_vcf_reference", input_type=File(optional=True), prefix="--vcf-reference", doc=InputDocumentation(doc="fasta file of the sequence the VCF was mapped to\n(default: None)")), ToolInput(tag="in_exclude_sites", input_type=File(optional=True), prefix="--exclude-sites", doc=InputDocumentation(doc="file name of one-based sites to exclude for raw tree\nbuilding (BED format in .bed files, DRM format in tab-\ndelimited files, or one position per line) (default:\nNone)")), ToolInput(tag="in_tree_builder_args", input_type=String(optional=True), prefix="--tree-builder-args", doc=InputDocumentation(doc="extra arguments to be passed directly to the\nexecutable of the requested tree method (e.g., --tree-\nbuilder-args='-czb') (default: )\n"))], outputs=[], container="quay.io/biocontainers/augur:11.1.2--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Tree_V0_1_0().translate("wdl")

