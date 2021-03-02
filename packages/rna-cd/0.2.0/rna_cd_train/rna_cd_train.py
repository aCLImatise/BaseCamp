from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, File

Rna_Cd_Train_V0_1_0 = CommandToolBuilder(tool="rna_cd_train", base_command=["rna_cd-train"], inputs=[ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Chunksize in bases. Default = 100")), ToolInput(tag="in_contig", input_type=String(optional=True), prefix="--contig", doc=InputDocumentation(doc="Name of mitochrondrial contig in your BAM\nfiles. Default = chrM")), ToolInput(tag="in_positives_dir", input_type=Directory(optional=True), prefix="--positives-dir", doc=InputDocumentation(doc="Path to directory containing positive BAM\nfiles. Mutually exclusive with --positives-\nlist")), ToolInput(tag="in_negatives_dir", input_type=Directory(optional=True), prefix="--negatives-dir", doc=InputDocumentation(doc="Path to directory containing negative BAM\nfiles. Mutually exlusive with --negatives-\nlist")), ToolInput(tag="in_positives_list", input_type=File(optional=True), prefix="--positives-list", doc=InputDocumentation(doc="Path to file containing a list of paths to\npositive BAM files. Mutually exclusive with\n--positives-dir")), ToolInput(tag="in_negatives_list", input_type=File(optional=True), prefix="--negatives-list", doc=InputDocumentation(doc="Path to file containing a list of paths to\nnegative BAM files. Mutuallly exclusive with\n--negatives-dir")), ToolInput(tag="in_cross_validations", input_type=Int(optional=True), prefix="--cross-validations", doc=InputDocumentation(doc="Number of folds for cross validation run.\nDefault = 3")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Verbosity value for cross validation step.\nDefault = 1")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use for processing of BAM\nfiles and cross validations. Default = 1")), ToolInput(tag="in_plot_out", input_type=File(optional=True), prefix="--plot-out", doc=InputDocumentation(doc="Optional path to PCA plot.")), ToolInput(tag="in_model_out", input_type=File(optional=True), prefix="--model-out", doc=InputDocumentation(doc="Path where model will be stored.  [required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rna_Cd_Train_V0_1_0().translate("wdl", allow_empty_container=True)

