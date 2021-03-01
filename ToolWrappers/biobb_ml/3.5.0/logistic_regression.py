from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Logistic_Regression_V0_1_0 = CommandToolBuilder(tool="logistic_regression", base_command=["logistic_regression"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_output_test_table_path", input_type=File(optional=True), prefix="--output_test_table_path", doc=InputDocumentation(doc="Path to the test table file. Accepted formats: csv.")), ToolInput(tag="in_output_plot_path", input_type=File(optional=True), prefix="--output_plot_path", doc=InputDocumentation(doc="Path to the statistics plot. If target is binary it shows confusion matrix, distributions of the predicted probabilities of both classes and ROC curve. If target is non-binary it shows confusion matrix. Accepted formats: png.")), ToolInput(tag="in_input_dataset_path", input_type=File(optional=True), prefix="--input_dataset_path", doc=InputDocumentation(doc="Path to the input dataset. Accepted formats: csv.")), ToolInput(tag="in_output_model_path", input_type=File(optional=True), prefix="--output_model_path", doc=InputDocumentation(doc="Path to the output model file. Accepted formats: pkl.\n"))], outputs=[ToolOutput(tag="out_output_test_table_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_test_table_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the test table file. Accepted formats: csv.")), ToolOutput(tag="out_output_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the statistics plot. If target is binary it shows confusion matrix, distributions of the predicted probabilities of both classes and ROC curve. If target is non-binary it shows confusion matrix. Accepted formats: png.")), ToolOutput(tag="out_output_model_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_model_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output model file. Accepted formats: pkl.\n"))], container="quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logistic_Regression_V0_1_0().translate("wdl")

